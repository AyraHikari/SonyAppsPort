.class public Lcom/android/launcher3/views/AllAppsButton;
.super Lcom/android/launcher3/BubbleTextView;
.source "AllAppsButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/AllAppsButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/AllAppsButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/launcher3/R$style;->AllAppsButtonTheme:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "theme":Landroid/content/Context;
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/IconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$drawable;->ic_all_apps_button:I

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmapWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v2, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/AllAppsButton;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 48
    return-void
.end method
