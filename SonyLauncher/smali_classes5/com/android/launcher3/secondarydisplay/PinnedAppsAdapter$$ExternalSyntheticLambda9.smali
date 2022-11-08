.class public final synthetic Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {v0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->$r8$lambda$wkeafRoCl-9Hs86hu3wQfHInRCg(Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;Lcom/android/launcher3/util/ComponentKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
