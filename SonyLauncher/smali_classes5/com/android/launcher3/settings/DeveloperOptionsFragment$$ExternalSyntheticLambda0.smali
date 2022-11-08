.class public final synthetic Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iput-object p2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->lambda$addOnboardingPrefsCatergory$11$com-android-launcher3-settings-DeveloperOptionsFragment([Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
