.class Lcom/android/quickstep/RecentTasksList$1;
.super Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;
.source "RecentTasksList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentTasksList;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentTasksList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentTasksList;

    .line 71
    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->-$$Nest$fgetmMainThreadExecutor(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList$1;->this$0:Lcom/android/quickstep/RecentTasksList;

    new-instance v2, Lcom/android/quickstep/RecentTasksList$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/quickstep/RecentTasksList$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
