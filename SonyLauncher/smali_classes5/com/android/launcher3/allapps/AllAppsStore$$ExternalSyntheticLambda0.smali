.class public final synthetic Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/AllAppsStore;

.field public final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->lambda$updateNotificationDots$0$com-android-launcher3-allapps-AllAppsStore(Ljava/util/function/Predicate;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method
