.class Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherPreviewAppWidgetHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 497
    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    .line 498
    const/16 p1, 0x400

    invoke-direct {p0, p2, p1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 499
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 506
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;->this$0:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHostView-IA;)V

    return-object v0
.end method
