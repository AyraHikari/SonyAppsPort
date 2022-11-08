.class public final enum Lcom/android/launcher3/logger/LauncherAtom$FromState;
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
    name = "FromState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$FromState$FromStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final enum FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_CUSTOM_VALUE:I = 0x2

.field public static final enum FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_EMPTY_VALUE:I = 0x1

.field public static final enum FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_STATE_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field public static final FROM_SUGGESTED_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 574
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v1, "FROM_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 583
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v3, "FROM_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 592
    new-instance v3, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v5, "FROM_CUSTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 601
    new-instance v5, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    const-string v7, "FROM_SUGGESTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/launcher3/logger/LauncherAtom$FromState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 564
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/launcher3/logger/LauncherAtom$FromState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/launcher3/logger/LauncherAtom$FromState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 670
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FromState$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FromState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 695
    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->value:I

    .line 696
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "value"    # I

    .line 656
    packed-switch p0, :pswitch_data_0

    .line 661
    const/4 v0, 0x0

    return-object v0

    .line 660
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 659
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 658
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 657
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation

    .line 667
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 680
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState$FromStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 564
    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 1

    .line 564
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$FromState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 644
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->value:I

    return v0
.end method
