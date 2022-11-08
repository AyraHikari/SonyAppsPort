.class Lcom/android/launcher3/widget/WidgetHostViewLoader$2;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field final synthetic val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v3, v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 121
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput v1, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 126
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v1

    .line 130
    .local v1, "unScaledSize":[I
    new-instance v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-direct {v2, v4, v6}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    .line 132
    .local v2, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iput v3, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 133
    iput-boolean v5, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 134
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 139
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v4, v4, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    return-void
.end method
