.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ToState;
.super Ljava/lang/Enum;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final enum TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_CUSTOM_WITH_EMPTY_SUGGESTIONS_VALUE:I = 0xf

.field public static final enum TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_CUSTOM_WITH_SUGGESTIONS_DISABLED_VALUE:I = 0x10

.field public static final enum TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_CUSTOM_WITH_VALID_PRIMARY_VALUE:I = 0xd

.field public static final enum TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY_VALUE:I = 0xe

.field public static final enum TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_EMPTY_WITH_EMPTY_SUGGESTIONS_VALUE:I = 0xb

.field public static final enum TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_EMPTY_WITH_SUGGESTIONS_DISABLED_VALUE:I = 0xc

.field public static final enum TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_EMPTY_WITH_VALID_PRIMARY_VALUE:I = 0x9

.field public static final enum TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY_VALUE:I = 0xa

.field public static final enum TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_STATE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION0_VALUE:I = 0x2

.field public static final enum TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION1_WITH_EMPTY_PRIMARY_VALUE:I = 0x4

.field public static final enum TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION1_WITH_VALID_PRIMARY_VALUE:I = 0x3

.field public static final enum TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION2_WITH_EMPTY_PRIMARY_VALUE:I = 0x6

.field public static final enum TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION2_WITH_VALID_PRIMARY_VALUE:I = 0x5

.field public static final enum TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION3_WITH_EMPTY_PRIMARY_VALUE:I = 0x8

.field public static final enum TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final TO_SUGGESTION3_WITH_VALID_PRIMARY_VALUE:I = 0x7

.field public static final enum UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

.field public static final UNCHANGED_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 719
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v1, "TO_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 727
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v3, "UNCHANGED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 735
    new-instance v3, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v5, "TO_SUGGESTION0"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 743
    new-instance v5, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v7, "TO_SUGGESTION1_WITH_VALID_PRIMARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 751
    new-instance v7, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v9, "TO_SUGGESTION1_WITH_EMPTY_PRIMARY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 759
    new-instance v9, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v11, "TO_SUGGESTION2_WITH_VALID_PRIMARY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 767
    new-instance v11, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v13, "TO_SUGGESTION2_WITH_EMPTY_PRIMARY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 775
    new-instance v13, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v15, "TO_SUGGESTION3_WITH_VALID_PRIMARY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 783
    new-instance v15, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v14, "TO_SUGGESTION3_WITH_EMPTY_PRIMARY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 791
    new-instance v14, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v12, "TO_EMPTY_WITH_VALID_PRIMARY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 799
    new-instance v12, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v10, "TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 807
    new-instance v10, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v8, "TO_EMPTY_WITH_EMPTY_SUGGESTIONS"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 815
    new-instance v8, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v6, "TO_EMPTY_WITH_SUGGESTIONS_DISABLED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 823
    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v4, "TO_CUSTOM_WITH_VALID_PRIMARY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 831
    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v2, "TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 839
    new-instance v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v6, "TO_CUSTOM_WITH_EMPTY_SUGGESTIONS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 847
    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const-string v4, "TO_CUSTOM_WITH_SUGGESTIONS_DISABLED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 708
    const/16 v4, 0x11

    new-array v4, v4, [Lcom/android/launcher3/logger/LauncherAtom$ToState;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$ToState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 1031
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1055
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1056
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->value:I

    .line 1057
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1
    .param p0, "value"    # I

    .line 1004
    packed-switch p0, :pswitch_data_0

    .line 1022
    const/4 v0, 0x0

    return-object v0

    .line 1021
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1020
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1019
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1018
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1017
    :pswitch_4
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1016
    :pswitch_5
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1015
    :pswitch_6
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1014
    :pswitch_7
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1013
    :pswitch_8
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1012
    :pswitch_9
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1011
    :pswitch_a
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1010
    :pswitch_b
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1009
    :pswitch_c
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1008
    :pswitch_d
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1007
    :pswitch_e
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1006
    :pswitch_f
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 1005
    :pswitch_10
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
            ">;"
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1041
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState$ToStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 708
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 1

    .line 708
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ToState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 992
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->value:I

    return v0
.end method
