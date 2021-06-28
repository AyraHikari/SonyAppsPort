.class public Lcom/sonyericsson/music/ui/ContextMenuIconView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ContextMenuIconView.java"


# static fields
.field private static final COLOR:I = -0x76000000

.field private static final COLOR_DARK_THEME:I = -0x4c000001


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/ContextMenuIconView;->setLightIconColor(Z)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public setLightIconColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 31
    new-instance p1, Lcom/sonyericsson/music/ui/DotMenuDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, -0x4c000001

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/music/ui/DotMenuDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/ui/DotMenuDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, -0x76000000

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/music/ui/DotMenuDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
