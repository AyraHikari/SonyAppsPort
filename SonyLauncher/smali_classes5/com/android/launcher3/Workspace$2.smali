.class Lcom/android/launcher3/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->runOnOverlayHidden(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 1313
    .local p0, "this":Lcom/android/launcher3/Workspace$2;, "Lcom/android/launcher3/Workspace$2;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$2;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 1316
    .local p0, "this":Lcom/android/launcher3/Workspace$2;, "Lcom/android/launcher3/Workspace$2;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$2;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-$$Nest$mtryRunOverlayCallback(Lcom/android/launcher3/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/launcher3/Workspace$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1319
    :cond_0
    return-void
.end method
