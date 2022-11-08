.class public final Lcom/android/systemui/animation/LaunchAnimator$Companion;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/LaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/android/systemui/animation/LaunchAnimator$Companion;",
        "",
        "()V",
        "DEBUG",
        "",
        "SRC_MODE",
        "Landroid/graphics/PorterDuffXfermode;",
        "getProgress",
        "",
        "timings",
        "Lcom/android/systemui/animation/LaunchAnimator$Timings;",
        "linearProgress",
        "delay",
        "",
        "duration",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/LaunchAnimator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F
    .locals 3
    .param p1, "timings"    # Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .param p2, "linearProgress"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "timings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getTotalDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p2

    long-to-float v1, p3

    sub-float/2addr v0, v1

    long-to-float v1, p5

    div-float/2addr v0, v1

    .line 58
    nop

    .line 59
    nop

    .line 56
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method
