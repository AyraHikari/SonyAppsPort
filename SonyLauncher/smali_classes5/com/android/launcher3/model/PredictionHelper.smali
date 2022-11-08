.class public final Lcom/android/launcher3/model/PredictionHelper;
.super Ljava/lang/Object;
.source "PredictionHelper.java"


# static fields
.field private static final APP_LOCATION_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final APP_LOCATION_WORKSPACE:Ljava/lang/String; = "workspace"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 49
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 50
    :cond_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    instance-of v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 54
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v2, Landroid/app/prediction/AppTargetId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v1

    .line 54
    return-object v1

    .line 56
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 59
    .restart local v0    # "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v2, Landroid/app/prediction/AppTargetId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v1

    .line 59
    return-object v1

    .line 61
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    .line 65
    .local v0, "shortcutKey":Lcom/android/launcher3/shortcuts/ShortcutKey;
    new-instance v1, Landroid/app/prediction/AppTarget$Builder;

    new-instance v2, Landroid/app/prediction/AppTargetId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcut:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    .line 66
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v1

    .line 65
    return-object v1

    .line 67
    .end local v0    # "shortcutKey":Lcom/android/launcher3/shortcuts/ShortcutKey;
    :cond_3
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 68
    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v1, Landroid/app/prediction/AppTargetId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 68
    return-object v0

    .line 71
    :cond_4
    return-object v0
.end method

.method public static isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    .line 103
    .local v0, "ci":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    sget-object v1, Lcom/android/launcher3/model/PredictionHelper$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 109
    return v2

    .line 107
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 105
    :pswitch_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isTrackedForHotseatPrediction(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 92
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTrackedForWidgetPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0
.end method

.method public static isTrackedForWidgetPrediction(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 118
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static wrapAppTargetWithItemLocation(Landroid/app/prediction/AppTarget;ILcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;
    .locals 4
    .param p0, "target"    # Landroid/app/prediction/AppTarget;
    .param p1, "action"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 80
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_0

    .line 82
    const-string v2, "hotseat"

    goto :goto_0

    :cond_0
    const-string v2, "workspace"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    const-string v2, "%s/%d/[%d,%d]/[%d,%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "location":Ljava/lang/String;
    new-instance v1, Landroid/app/prediction/AppTargetEvent$Builder;

    invoke-direct {v1, p0, p1}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    invoke-virtual {v1, v0}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v1

    return-object v1
.end method
