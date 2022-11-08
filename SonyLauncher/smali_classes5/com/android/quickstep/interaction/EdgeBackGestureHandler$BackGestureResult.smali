.class final enum Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
.super Ljava/lang/Enum;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackGestureResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

.field public static final enum UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 232
    new-instance v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->UNKNOWN:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 233
    new-instance v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v3, "BACK_COMPLETED_FROM_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 234
    new-instance v3, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v5, "BACK_COMPLETED_FROM_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 235
    new-instance v5, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v7, "BACK_CANCELLED_FROM_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 236
    new-instance v7, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v9, "BACK_CANCELLED_FROM_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 237
    new-instance v9, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v11, "BACK_NOT_STARTED_TOO_FAR_FROM_EDGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 238
    new-instance v11, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    const-string v13, "BACK_NOT_STARTED_IN_NAV_BAR_REGION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_NOT_STARTED_IN_NAV_BAR_REGION:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 231
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 231
    const-class v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-object v0
.end method

.method public static values()[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;
    .locals 1

    .line 231
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->$VALUES:[Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    invoke-virtual {v0}, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    return-object v0
.end method
