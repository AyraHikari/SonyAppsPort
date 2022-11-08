.class public final synthetic Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/quickstep/RecentTasksList;->lambda$getTaskKeys$0(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method
