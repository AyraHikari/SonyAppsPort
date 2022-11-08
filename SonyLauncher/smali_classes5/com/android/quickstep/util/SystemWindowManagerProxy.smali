.class public Lcom/android/quickstep/util/SystemWindowManagerProxy;
.super Lcom/android/launcher3/util/window/WindowManagerProxy;
.source "SystemWindowManagerProxy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getDisplayId(Landroid/view/Display;)Ljava/lang/String;
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .line 35
    invoke-virtual {p1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplays(Landroid/content/Context;)[Landroid/view/Display;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    return v0
.end method

.method public isInternalDisplay(Landroid/view/Display;)Z
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .line 40
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
