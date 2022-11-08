.class public final synthetic Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/allapps/AllAppsStore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    check-cast p1, Ljava/util/function/Predicate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method
