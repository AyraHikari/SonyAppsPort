.class public Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;
.super Landroidx/mediarouter/app/MediaRouteActionProvider;
.source "TintedMediaRouteActionProvider.java"


# instance fields
.field private mTintedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreateMediaRouteButton()Landroidx/mediarouter/app/MediaRouteButton;
    .locals 6

    .line 35
    invoke-super {p0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->onCreateMediaRouteButton()Landroidx/mediarouter/app/MediaRouteButton;

    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/core/view/ActionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101c3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 43
    sget-object v3, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    const v4, 0x7f040155

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_0

    .line 52
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;->mTintedDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;->mTintedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public setTint(I)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->getMediaRouteButton()Landroidx/mediarouter/app/MediaRouteButton;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/music/ui/TintedMediaRouteActionProvider;->mTintedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method
