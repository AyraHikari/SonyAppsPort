.class public final synthetic Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iput-object p2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda8;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->lambda$maybeAddSandboxCategory$7$com-android-launcher3-settings-DeveloperOptionsFragment(Landroid/content/Intent;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
