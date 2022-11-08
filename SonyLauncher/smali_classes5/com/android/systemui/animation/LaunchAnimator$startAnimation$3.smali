.class public final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/android/systemui/animation/LaunchAnimator$startAnimation$3",
        "Lcom/android/systemui/animation/LaunchAnimator$Animation;",
        "cancel",
        "",
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


# instance fields
.field final synthetic $animator:Landroid/animation/ValueAnimator;

.field final synthetic $cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "$cancelled"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p2, "$animator"    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$animator:Landroid/animation/ValueAnimator;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 376
    return-void
.end method
