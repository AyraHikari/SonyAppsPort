.class public Lcom/android/launcher3/widget/LocalColorExtractor;
.super Ljava/lang/Object;
.source "LocalColorExtractor.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/LocalColorExtractor$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LocalColorExtractor;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    const-class v0, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->local_colors_extraction_class:I

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LocalColorExtractor;

    return-object v0
.end method


# virtual methods
.method public applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "colors"    # Landroid/app/WallpaperColors;

    .line 70
    return-void
.end method

.method public generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    .line 57
    return-void
.end method

.method public setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 0
    .param p1, "pos"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "screenId"    # I

    .line 65
    return-void
.end method
