.class public final enum Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
.super Ljava/lang/Enum;
.source "GestureStateProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/tracing/GestureStateProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEndTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$GestureEndTargetVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final enum HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final HOME_VALUE:I = 0x1

.field public static final enum LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final LAST_TASK_VALUE:I = 0x4

.field public static final enum NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final NEW_TASK_VALUE:I = 0x3

.field public static final enum RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final RECENTS_VALUE:I = 0x2

.field public static final enum UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

.field public static final UNSET_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 28
    new-instance v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v3, "HOME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 32
    new-instance v3, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v5, "RECENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 36
    new-instance v5, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v7, "NEW_TASK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 40
    new-instance v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    const-string v9, "LAST_TASK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 19
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 94
    new-instance v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    .line 120
    return-void
.end method

.method public static forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1
    .param p0, "value"    # I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->LAST_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0

    .line 83
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->NEW_TASK:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0

    .line 82
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->RECENTS:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0

    .line 81
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->HOME:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0

    .line 80
    :pswitch_4
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget$GestureEndTargetVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p0}, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->forNumber(I)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->$VALUES:[Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    invoke-virtual {v0}, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->value:I

    return v0
.end method
