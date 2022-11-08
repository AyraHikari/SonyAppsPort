.class public Lcom/android/launcher3/settings/NotificationDotsPreference;
.super Landroidx/preference/Preference;
.source "NotificationDotsPreference.java"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ENABLED_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"


# instance fields
.field private final mListenerListObserver:Landroid/database/ContentObserver;

.field private mWidgetFrameVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$mupdateUI(Lcom/android/launcher3/settings/NotificationDotsPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->updateUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    .line 55
    new-instance v0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 56
    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/settings/NotificationDotsPreference$1;-><init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    .line 55
    new-instance v0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 56
    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/settings/NotificationDotsPreference$1;-><init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    .line 55
    new-instance v0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 56
    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/settings/NotificationDotsPreference$1;-><init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    .line 55
    new-instance v0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    .line 56
    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/settings/NotificationDotsPreference$1;-><init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    .line 66
    return-void
.end method

.method private setWidgetFrameVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 111
    iget-boolean v0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    if-eq v0, p1, :cond_0

    .line 112
    iput-boolean p1, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->notifyChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 98
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->onSettingsChanged(Z)V

    .line 100
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 82
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 83
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    const-string v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    invoke-direct {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->updateUI()V

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, ":settings:fragment_args_key"

    const-string v2, "notification_badging"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/launcher3/settings/NotificationDotsPreference;->setIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 119
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 121
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "widgetFrame":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 123
    iget-boolean v1, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mWidgetFrameVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 105
    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/settings/NotificationDotsPreference;->mListenerListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method public onSettingsChanged(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    sget v0, Lcom/android/launcher3/R$string;->notification_dots_desc_on:I

    goto :goto_0

    .line 131
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->notification_dots_desc_off:I

    :goto_0
    nop

    .line 133
    .local v0, "summary":I
    const/4 v1, 0x1

    .line 134
    .local v1, "serviceEnabled":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "enabledListeners":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v5, "myListener":Landroid/content/ComponentName;
    if-eqz v4, :cond_2

    .line 141
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    move v1, v6

    .line 143
    if-nez v1, :cond_3

    .line 144
    sget v0, Lcom/android/launcher3/R$string;->title_missing_notification_access:I

    .line 147
    .end local v4    # "enabledListeners":Ljava/lang/String;
    .end local v5    # "myListener":Landroid/content/ComponentName;
    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/settings/NotificationDotsPreference;->setWidgetFrameVisible(Z)V

    .line 148
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const-class v2, Lcom/android/launcher3/settings/NotificationDotsPreference$NotificationAccessConfirmation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/settings/NotificationDotsPreference;->setFragment(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->setSummary(I)V

    .line 150
    return-void
.end method
