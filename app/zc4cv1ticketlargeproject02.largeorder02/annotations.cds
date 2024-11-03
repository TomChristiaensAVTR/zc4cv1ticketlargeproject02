using AdminService as service from '../../srv/service';
annotate service.LargeOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'NewConstruction',
                Value : NewConstruction,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NewConstructionComment',
                Value : NewConstructionComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SendInvoiceCopies',
                Value : SendInvoiceCopies,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SendInvoiceCopiesComment',
                Value : SendInvoiceCopiesComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SendPacklistCopies',
                Value : SendPacklistCopies,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SendPacklistCopiesComment',
                Value : SendPacklistCopiesComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShipComplete',
                Value : ShipComplete,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShipCompleteComment',
                Value : ShipCompleteComment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProjectedDeliveryDate',
                Value : ProjectedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProjectedDeliveryDateComment',
                Value : ProjectedDeliveryDateComment,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>TicketIdentification}',
            ID : 'i18nTicketIdentification',
            Target : '@UI.Identification',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'General Group Section',
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
                    Label : 'Special Delivery Requirements subsection',
                    ID : 'SpecialDeliveryRequirementssubsection',
                    Target : '@UI.FieldGroup#SpecialDeliveryRequirementssubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Liftgate subsection',
                    ID : 'SpecialDeliveryRequirementssubsection1',
                    Target : '@UI.FieldGroup#SpecialDeliveryRequirementssubsection1',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Installation subsection',
                    ID : 'Installationsubsection',
                    Target : '@UI.FieldGroup#Installationsubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Consolidated Invoicing subsection',
                    ID : 'ConsolidatedInvoicingsubsection',
                    Target : '@UI.FieldGroup#ConsolidatedInvoicingsubsection',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Grant Funds subsection',
                    ID : 'GrantFundssubsection',
                    Target : '@UI.FieldGroup#GrantFundssubsection',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>PoSection}',
            ID : 'i18nPoSection',
            Target : '@UI.FieldGroup#i18nPoSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>ProjectSection}',
            ID : 'ProjectSection',
            Target : '@UI.FieldGroup#ProjectSection',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>SoSection}',
            ID : 'i18nSoSection',
            Target : '@UI.FieldGroup#i18nSoSection',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>C4cTicketUuid}',
            Value : TicketObjectID,
            ![@UI.Importance] : #Low,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>C4cTicketId}',
            Value : TicketID,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ProjectValueAmount}',
            Value : ProjectValue_amount,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ProjectValueCurrency}',
            Value : ProjectValue_currency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ProjectValueComment}',
            Value : ProjectValueComment,
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>C4cTicketUuid}',
            Value : TicketObjectID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>C4cTicketId}',
            Value : TicketID,
        },
    ],
    UI.FieldGroup #i18nPoSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PoNumber}',
                Value : PONumber,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PoNumberComment}',
                Value : PONumberComment,
            },
        ],
    },
    UI.FieldGroup #ProjectSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Project Value Amount',
                Value : ProjectValue_amount,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ProjectValueCurrency}',
                Value : ProjectValue_currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ProjectValueComment}',
                Value : ProjectValueComment,
            },
        ],
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : TicketID,
        },
        TypeName : '{i18n>TicketLargeOrder}',
        TypeNamePlural : '{i18n>TicketLargeOrders}',
    },
    UI.FieldGroup #i18nSoSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SoNumber}',
                Value : SONumber,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SoNumberComment}',
                Value : SONumberComment,
            },
        ],
    },
    UI.FieldGroup #InsideDeliverysubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'InsideDelivery',
                Value : InsideDelivery_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InsideDeliveryComment',
                Value : InsideDeliveryComment,
            },
        ],
    },
    UI.FieldGroup #SpecialDeliveryRequirementssubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'SpecialDeliveryRequirements',
                Value : SpecialDeliveryRequirements,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SpecialDeliveryRequirementsComment',
                Value : SpecialDeliveryRequirementsComment,
            },
        ],
    },
    UI.FieldGroup #SpecialDeliveryRequirementssubsection1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Liftgate',
                Value : Liftgate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LiftgateComment',
                Value : LiftgateComment,
            },
        ],
    },
    UI.FieldGroup #Installationsubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Installation',
                Value : Installation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InstallationComment',
                Value : InstallationComment,
            },
        ],
    },
    UI.FieldGroup #ConsolidatedInvoicingsubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ConsolidatedInvoicing',
                Value : ConsolidatedInvoicing,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ConsolidatedInvoicingComment',
                Value : ConsolidatedInvoicingComment,
            },
        ],
    },
    UI.FieldGroup #GrantFundssubsection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'GrantFunds',
                Value : GrantFunds,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GrantFundsComment',
                Value : GrantFundsComment,
            },
        ],
    },
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : TicketID,
                    Descending : true,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    },
);

annotate service.LargeOrder with {
    PONumberComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    ProjectValueComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    SONumberComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    InsideDeliveryComment @(
        UI.MultiLineText : true
    )
};

annotate service.LargeOrder with {
    LiftgateComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    SpecialDeliveryRequirementsComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    InstallationComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    ConsolidatedInvoicingComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    GrantFundsComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    NewConstructionComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    SendInvoiceCopiesComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    SendPacklistCopiesComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    ShipCompleteComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    ProjectedDeliveryDateComment @UI.MultiLineText : true
};

annotate service.LargeOrder with {
    ProjectValue_amount @Common.Text : ProjectValue_currency_code
};

annotate service.LargeOrder with {
    TicketID @Common.FieldControl : #Mandatory
};

