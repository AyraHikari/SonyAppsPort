.class public Lcom/android/launcher3/compat/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 130
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 133
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 135
    :cond_1
    return-object v0
.end method

.method private static getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public static getRecommendedTimeoutMillis(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalTimeout"    # I
    .param p2, "flags"    # I

    .line 139
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    return v0

    .line 142
    :cond_0
    return p1
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isObservedEventType(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # I

    .line 40
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 51
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 53
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 59
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void
.end method

.method public static sendDismissAnimationEndsEventToTest(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 93
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    const-string v2, "TAPL_DISMISS_ANIMATION_ENDS"

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method private static sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventTag"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 112
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 114
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 118
    return-void
.end method

.method public static sendFolderOpenedEventToTest(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 104
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    const-string v2, "TAPL_FOLDER_OPENED"

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public static sendPauseDetectedEventToTest(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 86
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    const-string v2, "TAPL_PAUSE_DETECTED"

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public static sendScrollFinishedEventToTest(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 79
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    const/4 v1, 0x0

    const-string v2, "TAPL_SCROLL_FINISHED"

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public static sendStateEventToTest(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stateOrdinal"    # I

    .line 66
    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getAccessibilityManagerForTest(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 67
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v1, "parcel":Landroid/os/Bundle;
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v2, "TAPL_SWITCHED_TO_STATE"

    invoke-static {v0, p0, v2, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendEventToTest(Landroid/view/accessibility/AccessibilityManager;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStateEventToTest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaplTarget"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method
