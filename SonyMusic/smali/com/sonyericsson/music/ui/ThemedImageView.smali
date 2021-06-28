.class public Lcom/sonyericsson/music/ui/ThemedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ThemedImageView.java"


# static fields
.field private static final DARK_THEME_COLOR:I = -0x4c000001

.field private static final LIGHT_THEME_COLOR:I = -0x76000000


# instance fields
.field private mOverrideThemedImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/R$styleable;->ThemedImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 36
    :try_start_0
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/ui/ThemedImageView;->mOverrideThemedImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-static {p1}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ui/ThemedImageView;->setDarkThemeEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    throw p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/ui/ThemedImageView;->setDarkThemeEnabled(Z)V

    return-void
.end method

.method public getBaseline()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public overrideThemedImage(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/sonyericsson/music/ui/ThemedImageView;->mOverrideThemedImage:Z

    return-void
.end method

.method public setDarkThemeEnabled(Z)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/music/ui/ThemedImageView;->mOverrideThemedImage:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const p1, -0x4c000001

    .line 58
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/high16 p1, -0x76000000

    .line 60
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 63
    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 51
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/ui/ThemedImageView;->overrideThemedImage(Z)V

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
