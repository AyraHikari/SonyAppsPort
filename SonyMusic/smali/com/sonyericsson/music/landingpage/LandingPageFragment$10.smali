.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->runOnNextPreDraw(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

.field final synthetic val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;->val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$2500(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$10;->val$onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v0

    return v0
.end method
