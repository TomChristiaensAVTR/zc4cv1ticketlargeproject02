using LightService as service from '../../srv/service1';
annotate service.LargeOrder with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>TicketIdentification}',
            ID : 'Identification',
            Target : '@UI.Identification',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>GeneralGroupSection}',
            ID : 'GeneralGroupSection',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Inside Delivery subsection',
                    ID : 'InsideDeliverysubsection',
                    Target : '@UI.FieldGroup#InsideDeliverysubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>SpecialDeliveryRequirementsSubsection}',
                    ID : 'SpecialDeliveryRequirementssubsection',
                    Target : '@UI.FieldGroup#SpecialDeliveryRequirementssubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Liftgate subsection',
                    ID : 'Liftgatesubsection',
                    Target : '@UI.FieldGroup#Liftgatesubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>InstallationSubsection}',
                    ID : 'Installationsubsection',
                    Target : '@UI.FieldGroup#Installationsubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>ConsolidatedInvoicingSubsection}',
                    ID : 'ConsolidatedInvoicingsubsection',
                    Target : '@UI.FieldGroup#ConsolidatedInvoicingsubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>GrantFundsSubsection}',
                    ID : 'GrantFundssubsection',
                    Target : '@UI.FieldGroup#GrantFundssubsection',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>GeneralInformation}',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'SO Section',
            ID : 'SOSection',
            Target : '@UI.FieldGroup#SOSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>PoSection}',
            ID : 'POSection',
            Target : '@UI.FieldGroup#POSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>ProjectSection}',
            ID : 'ProjectSection',
            Target : '@UI.FieldGroup#ProjectSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ChangeHistoryFacet',
            Label : '{i18n>ChangeHistory}',
            Target : 'changes/@UI.PresentationVariant',
            ![@UI.PartOfPreview] : false,
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>AdministrativeData}',
            ID : 'AdministrativeData',
            Target : '@UI.FieldGroup#AdministrativeData',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : TicketObjectID,
            Label : 'TicketObjectID',
        },
        {
            $Type : 'UI.DataField',
            Value : TicketID,
            Label : 'TicketID',
        },
    ],
    UI.FieldGroup #InsideDeliverysubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : InsideDelivery_code,
                Label : 'InsideDelivery_code',
            },
            {
                $Type : 'UI.DataField',
                Value : InsideDeliveryComment,
                Label : 'InsideDeliveryComment',
            },
        ],
    },
    UI.FieldGroup #SpecialDeliveryRequirementssubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : SpecialDeliveryRequirementsComment,
                Label : 'SpecialDeliveryRequirementsComment',
            },
            {
                $Type : 'UI.DataField',
                Value : SpecialDeliveryRequirements,
                Label : 'SpecialDeliveryRequirements',
            },
        ],
    },
    UI.FieldGroup #Liftgatesubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Liftgate,
                Label : 'Liftgate',
            },
            {
                $Type : 'UI.DataField',
                Value : LiftgateComment,
                Label : 'LiftgateComment',
            },
        ],
    },
    UI.FieldGroup #Installationsubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Installation,
                Label : 'Installation',
            },
            {
                $Type : 'UI.DataField',
                Value : InstallationComment,
                Label : 'InstallationComment',
            },
        ],
    },
    UI.FieldGroup #ConsolidatedInvoicingsubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ConsolidatedInvoicing,
                Label : 'ConsolidatedInvoicing',
            },
            {
                $Type : 'UI.DataField',
                Value : ConsolidatedInvoicingComment,
                Label : 'ConsolidatedInvoicingComment',
            },
        ],
    },
    UI.FieldGroup #GrantFundssubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : GrantFunds,
                Label : 'GrantFunds',
            },
            {
                $Type : 'UI.DataField',
                Value : GrantFundsComment,
                Label : 'GrantFundsComment',
            },
        ],
    },
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : NewConstruction,
                Label : 'NewConstruction',
            },
            {
                $Type : 'UI.DataField',
                Value : NewConstructionComment,
                Label : 'NewConstructionComment',
            },
            {
                $Type : 'UI.DataField',
                Value : SendInvoiceCopies,
                Label : 'SendInvoiceCopies',
            },
            {
                $Type : 'UI.DataField',
                Value : SendInvoiceCopiesComment,
                Label : 'SendInvoiceCopiesComment',
            },
            {
                $Type : 'UI.DataField',
                Value : SendPacklistCopies,
                Label : 'SendPacklistCopies',
            },
            {
                $Type : 'UI.DataField',
                Value : SendPacklistCopiesComment,
                Label : 'SendPacklistCopiesComment',
            },
            {
                $Type : 'UI.DataField',
                Value : ShipComplete,
                Label : 'ShipComplete',
            },
            {
                $Type : 'UI.DataField',
                Value : ShipCompleteComment,
                Label : 'ShipCompleteComment',
            },
            {
                $Type : 'UI.DataField',
                Value : ProjectedDeliveryDate,
                Label : 'ProjectedDeliveryDate',
            },
            {
                $Type : 'UI.DataField',
                Value : ProjectedDeliveryDateComment,
                Label : 'ProjectedDeliveryDateComment',
            },
        ],
    },
    UI.FieldGroup #POSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : PONumber,
                Label : 'PONumber',
            },
            {
                $Type : 'UI.DataField',
                Value : PONumberComment,
                Label : 'PONumberComment',
            },
        ],
    },
    UI.FieldGroup #ProjectSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ProjectValue_amount,
                Label : 'ProjectValue_amount',
            },
            {
                $Type : 'UI.DataField',
                Value : ProjectValue_currency_code,
                Label : 'ProjectValue_currency_code',
            },
            {
                $Type : 'UI.DataField',
                Value : ProjectValueComment,
                Label : 'ProjectValueComment',
            },
        ],
    },
    UI.FieldGroup #SOSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : SONumber,
                Label : 'SONumber',
            },
            {
                $Type : 'UI.DataField',
                Value : SONumberComment,
                Label : 'SONumberComment',
            },
        ],
    },
    UI.FieldGroup #AdministrativeData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
);

