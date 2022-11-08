.class public final synthetic Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    iput-boolean p2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    iget-boolean v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->lambda$onBindViewHolder$0$com-android-launcher3-settings-DeveloperOptionsFragment$PluginPreference(ZLandroid/view/View;)V

    return-void
.end method
