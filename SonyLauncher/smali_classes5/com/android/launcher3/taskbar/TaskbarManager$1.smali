.class Lcom/android/launcher3/taskbar/TaskbarManager$1;
.super Ljava/lang/Object;
.source "TaskbarManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarManager;

    .line 117
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmUserUnlocked(Lcom/android/launcher3/taskbar/TaskbarManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 125
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 126
    .local v1, "configDiff":I
    const v2, -0x7fffda00

    .line 129
    .local v2, "configsRequiringRecreate":I
    and-int v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    .line 130
    .local v3, "requiresRecreate":Z
    :goto_1
    and-int/lit16 v6, v1, 0x400

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v6}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 134
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v6}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 135
    .local v6, "oldDp":Lcom/android/launcher3/DeviceProfile;
    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    .line 137
    .local v7, "isOrientationChange":Z
    :goto_2
    if-eqz v7, :cond_3

    iget v8, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_3

    :cond_3
    iget v8, v6, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 138
    .local v8, "oldWidth":I
    :goto_3
    if-eqz v7, :cond_4

    iget v9, v6, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_4

    :cond_4
    iget v9, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 139
    .local v9, "oldHeight":I
    :goto_4
    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ne v10, v8, :cond_6

    iget v10, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ne v10, v9, :cond_6

    .line 140
    and-int/lit16 v1, v1, -0x401

    .line 141
    and-int v10, v1, v2

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :goto_5
    move v3, v4

    .line 145
    .end local v6    # "oldDp":Lcom/android/launcher3/DeviceProfile;
    .end local v7    # "isOrientationChange":Z
    .end local v8    # "oldWidth":I
    .end local v9    # "oldHeight":I
    :cond_6
    if-eqz v3, :cond_7

    .line 146
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$mrecreateTaskbar(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    goto :goto_6

    .line 149
    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 150
    if-eqz v0, :cond_8

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v4, :cond_8

    .line 151
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    .line 153
    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->-$$Nest$fgetmTaskbarActivityContext(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onConfigurationChanged(I)V

    .line 156
    :cond_9
    :goto_6
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    .line 157
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 160
    return-void
.end method
