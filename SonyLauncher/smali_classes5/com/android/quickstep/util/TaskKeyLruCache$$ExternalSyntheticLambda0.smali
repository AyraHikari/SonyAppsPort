.class public final synthetic Lcom/android/quickstep/util/TaskKeyLruCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/TaskKeyLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->lambda$removeAll$0(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
