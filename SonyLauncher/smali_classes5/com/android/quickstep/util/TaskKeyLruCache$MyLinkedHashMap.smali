.class Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/TaskKeyLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final mMaxSize:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .line 116
    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;, "Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 117
    iput p1, p0, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->mMaxSize:I

    .line 118
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/quickstep/util/TaskKeyLruCache$Entry<",
            "TV;>;>;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;, "Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap<TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/quickstep/util/TaskKeyLruCache$Entry<TV;>;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;->mMaxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
