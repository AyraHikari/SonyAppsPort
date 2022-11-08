.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$3;
.super Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->inflateAndAddWidgets(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
    .param p2, "context"    # Landroid/content/Context;

    .line 366
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$3;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected shouldAllowDirectClick()Z
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method
