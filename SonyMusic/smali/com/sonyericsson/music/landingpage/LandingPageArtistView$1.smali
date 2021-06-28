.class Lcom/sonyericsson/music/landingpage/LandingPageArtistView$1;
.super Ljava/lang/Object;
.source "LandingPageArtistView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->startZoomOutAnimation(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;F)V

    return-void
.end method
