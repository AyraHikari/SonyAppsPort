.class Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LandingPageArtistView.java"


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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isDefaultImage:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->val$isDefaultImage:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->access$202(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageArtistView$2;->val$isDefaultImage:Z

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageArtistView;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
