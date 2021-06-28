.class Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;
.super Landroid/os/AsyncTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleExtensionsPrefs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field final synthetic this$0:Lcom/sonyericsson/music/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/SettingsFragment;Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 882
    iput-object p2, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private getExtensions(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-static {p1}, Lcom/sonyericsson/music/extension/ExtensionManager;->getInstalledExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 889
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 890
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sonymobile.media.dashboard.TITLE"

    const/4 v5, -0x1

    .line 891
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    .line 894
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 895
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v4, :cond_0

    if-eq v3, v5, :cond_0

    .line 899
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 900
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 877
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 908
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 910
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 913
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->getExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 877
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 919
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-static {v1}, Lcom/sonyericsson/music/SettingsFragment;->access$000(Lcom/sonyericsson/music/SettingsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 927
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const/4 v3, 0x1

    .line 929
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isExtensionTileEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 931
    new-instance v5, Landroidx/preference/CheckBoxPreference;

    invoke-direct {v5, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 932
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const-string v6, "pref_key_extension"

    .line 933
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 935
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f1001da

    .line 936
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 937
    iget-object v4, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 938
    iget-object v4, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-static {v4}, Lcom/sonyericsson/music/SettingsFragment;->access$100(Lcom/sonyericsson/music/SettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 939
    iget-object v4, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-static {v4}, Lcom/sonyericsson/music/SettingsFragment;->access$000(Lcom/sonyericsson/music/SettingsFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 944
    iget-object p1, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/SettingsFragment$HandleExtensionsPrefs;->this$0:Lcom/sonyericsson/music/SettingsFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/SettingsFragment;->access$100(Lcom/sonyericsson/music/SettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
