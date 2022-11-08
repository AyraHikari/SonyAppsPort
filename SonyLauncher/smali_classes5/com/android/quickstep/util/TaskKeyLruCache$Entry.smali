.class Lcom/android/quickstep/util/TaskKeyLruCache$Entry;
.super Ljava/lang/Object;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/TaskKeyLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 102
    iput-object p2, p0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;

    .line 103
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 107
    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache$Entry;, "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;"
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    return v0
.end method
