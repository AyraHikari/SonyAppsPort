.class public final synthetic Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->lambda$forFolderMatch$4(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    return p1
.end method
