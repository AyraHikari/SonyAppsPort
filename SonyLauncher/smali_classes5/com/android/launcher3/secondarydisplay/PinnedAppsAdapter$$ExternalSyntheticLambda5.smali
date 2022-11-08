.class public final synthetic Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->lambda$update$2$com-android-launcher3-secondarydisplay-PinnedAppsAdapter(Ljava/util/Set;)V

    return-void
.end method
