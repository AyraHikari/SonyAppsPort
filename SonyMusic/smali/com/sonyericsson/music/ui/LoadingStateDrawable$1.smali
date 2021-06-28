.class Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;
.super Ljava/lang/Object;
.source "LoadingStateDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ui/LoadingStateDrawable;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/LoadingStateDrawable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ui/LoadingStateDrawable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;->this$0:Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;->this$0:Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/ui/LoadingStateDrawable;->access$002(Lcom/sonyericsson/music/ui/LoadingStateDrawable;F)F

    .line 64
    iget-object p1, p0, Lcom/sonyericsson/music/ui/LoadingStateDrawable$1;->this$0:Lcom/sonyericsson/music/ui/LoadingStateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
