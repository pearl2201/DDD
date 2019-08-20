﻿using Conditions;
using System;
using System.Runtime.Serialization;

namespace DDD.HealthcareDelivery.Domain.Prescriptions
{
    using Core.Domain;

    [DataContract(Namespace = "DDD.HealthcareDelivery.Domain.Prescriptions")]
    public class PharmaceuticalPrescriptionRevoked : IDomainEvent
    {

        #region Constructors

        public PharmaceuticalPrescriptionRevoked(int prescriptionIdentifier, DateTime occuredOn, string reason = null)
        {
            Condition.Requires(prescriptionIdentifier, nameof(prescriptionIdentifier)).IsGreaterThan(0);
            Condition.Requires(reason, nameof(reason)).IsNotNullOrWhiteSpace();
            this.PrescriptionIdentifier = prescriptionIdentifier;
            this.Reason = reason;
            this.OccurredOn = occuredOn;
        }

        public PharmaceuticalPrescriptionRevoked(int prescriptionIdentifier, string reason = null)
            : this(prescriptionIdentifier, DateTime.Now, reason)
        {
        }

        /// <remarks>For serialization</remarks>
        private PharmaceuticalPrescriptionRevoked() { }

        #endregion Constructors

        #region Properties

        [DataMember(Name = "OccurredOn", Order = 3)]
        public DateTime OccurredOn { get; private set; }

        [DataMember(Name = "PrescriptionId", Order = 1)]
        public int PrescriptionIdentifier { get; private set; }

        [DataMember(Name = "Reason", Order = 2)]
        public string Reason { get; private set; }

        #endregion Properties

    }
}
