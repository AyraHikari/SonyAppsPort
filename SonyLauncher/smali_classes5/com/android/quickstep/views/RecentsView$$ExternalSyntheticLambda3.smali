.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$applyLoadPlan$3$com-android-quickstep-views-RecentsView(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void
.end method
