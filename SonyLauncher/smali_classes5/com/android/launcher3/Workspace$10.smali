.class Lcom/android/launcher3/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$changedInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 3437
    .local p0, "this":Lcom/android/launcher3/Workspace$10;, "Lcom/android/launcher3/Workspace$10;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$10;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$10;->val$changedInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 3440
    .local p0, "this":Lcom/android/launcher3/Workspace$10;, "Lcom/android/launcher3/Workspace$10;"
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$10;->val$changedInfo:Ljava/util/ArrayList;

    .line 3441
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3442
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    const/16 v1, 0x64

    iput v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->installProgress:I

    .line 3443
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 3446
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
