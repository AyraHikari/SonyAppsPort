.class public final synthetic Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/data/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/data/AppInfo;

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->lambda$updateProgressBar$1(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method
