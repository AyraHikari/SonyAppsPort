.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;
.super Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherPreviewAppWidgetHostView"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 512
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 513
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected shouldAllowDirectClick()Z
    .locals 1

    .line 517
    const/4 v0, 0x0

    return v0
.end method
