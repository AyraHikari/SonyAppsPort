.class public final Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 843
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;->this$0:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->access$setCurrentAnimator$p(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;Landroid/animation/ValueAnimator;)V

    .line 846
    return-void
.end method
