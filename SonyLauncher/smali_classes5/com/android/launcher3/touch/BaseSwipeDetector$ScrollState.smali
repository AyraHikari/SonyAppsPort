.class final enum Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;
.super Ljava/lang/Enum;
.source "BaseSwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/touch/BaseSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

.field public static final enum DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

.field public static final enum IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

.field public static final enum SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    new-instance v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 73
    new-instance v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    const-string v3, "DRAGGING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->DRAGGING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 74
    new-instance v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    const-string v5, "SETTLING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    .line 71
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->$VALUES:[Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->$VALUES:[Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-virtual {v0}, [Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    return-object v0
.end method
