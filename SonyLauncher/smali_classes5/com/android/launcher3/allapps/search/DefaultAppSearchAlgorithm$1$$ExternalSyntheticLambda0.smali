.class public final synthetic Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/search/SearchCallback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/search/SearchCallback;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/search/SearchCallback;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$1;->lambda$execute$0(Lcom/android/launcher3/search/SearchCallback;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
