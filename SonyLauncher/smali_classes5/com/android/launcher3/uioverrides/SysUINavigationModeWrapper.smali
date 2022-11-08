.class public Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;
.super Ljava/lang/Object;
.source "SysUINavigationModeWrapper.java"


# static fields
.field private static mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSysUiNavigationModeChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    sget-object v0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 25
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    sget-object v1, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 27
    return-void
.end method

.method public static isGestureNavMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSwipeUpEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThreeButtonMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$addSysUiNavigationModeChangeListener$0(Landroid/content/Context;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newMode"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 22
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SettingsChange;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/launcher/idd/Idd$SettingsChange;->swipeUpChanged(Landroid/content/Context;Z)V

    .line 22
    return-void
.end method

.method public static removeSysUiNavigationModeChangeListener(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    sget-object v0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    sget-object v1, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/uioverrides/SysUINavigationModeWrapper;->mDisplayInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    .line 35
    return-void
.end method
