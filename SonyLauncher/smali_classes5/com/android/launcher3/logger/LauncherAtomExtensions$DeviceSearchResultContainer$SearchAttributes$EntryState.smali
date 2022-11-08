.class public final enum Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
.super Ljava/lang/Enum;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

.field public static final enum ALL_APPS:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

.field public static final ALL_APPS_VALUE:I = 0x1

.field public static final enum ENTRY_STATE_UNKNOWN:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

.field public static final ENTRY_STATE_UNKNOWN_VALUE:I = 0x0

.field public static final enum QSB:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

.field public static final QSB_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 523
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    const-string v1, "ENTRY_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ENTRY_STATE_UNKNOWN:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    .line 531
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    const-string v3, "ALL_APPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ALL_APPS:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    .line 539
    new-instance v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    const-string v5, "QSB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->QSB:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    .line 518
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    .line 591
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->value:I

    .line 617
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
    .locals 1
    .param p0, "value"    # I

    .line 578
    packed-switch p0, :pswitch_data_0

    .line 582
    const/4 v0, 0x0

    return-object v0

    .line 581
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->QSB:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    return-object v0

    .line 580
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ALL_APPS:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    return-object v0

    .line 579
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->ENTRY_STATE_UNKNOWN:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;",
            ">;"
        }
    .end annotation

    .line 588
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 601
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState$EntryStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 518
    const-class v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;
    .locals 1

    .line 518
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;->value:I

    return v0
.end method
