.class Lcom/android/launcher3/Launcher$9;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$newScreenIndex:I

.field final synthetic val$startBounceAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 2529
    iput-object p1, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$9;->val$newScreenIndex:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$9;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2531
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->closeOpenViews(Z)V

    .line 2534
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/Launcher$9;->val$newScreenIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2535
    iget-object v0, p0, Lcom/android/launcher3/Launcher$9;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$9;->val$startBounceAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2538
    :cond_0
    return-void
.end method
