.class public final synthetic Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/preference/PreferenceDataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Context;Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iput-object p2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/PreferenceDataStore;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda3;->f$2:Landroidx/preference/PreferenceDataStore;

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->lambda$loadPluginPrefs$4$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Context;Landroidx/preference/PreferenceDataStore;Landroid/util/Pair;Ljava/util/ArrayList;)V

    return-void
.end method
