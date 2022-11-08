.class Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;
.super Ljava/lang/Object;
.source "TaskShortcutFactory.java"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

.field final synthetic val$onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    .line 205
    iput-object p1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    iput-object p2, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->val$onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 208
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->access$000(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/BaseDraggingActivity;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 209
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v1}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmTaskView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 210
    const-string v2, "recent"

    invoke-virtual {v0, v2, v1}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->startSplitScreen(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 212
    iget-object v0, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->this$0:Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;

    invoke-static {v0}, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;->-$$Nest$fgetmTaskView(Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut;)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskShortcutFactory$MultiWindowSystemShortcut$2;->val$onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 215
    :cond_0
    return-void
.end method
