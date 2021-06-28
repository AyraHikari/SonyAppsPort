.class Lcom/sonyericsson/music/ui/ShadowLayout$1;
.super Ljava/lang/Object;
.source "ShadowLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ui/ShadowLayout;->animateShadowAlpha(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ui/ShadowLayout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ui/ShadowLayout;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/music/ui/ShadowLayout$1;->this$0:Lcom/sonyericsson/music/ui/ShadowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/ui/ShadowLayout$1;->this$0:Lcom/sonyericsson/music/ui/ShadowLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/ui/ShadowLayout;->setShadowAlpha(F)V

    return-void
.end method
