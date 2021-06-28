.class interface abstract Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;
.super Ljava/lang/Object;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StoreItemListener"
.end annotation


# virtual methods
.method public abstract onStoreItemClicked(ILcom/sonyericsson/music/library/store/StoreResponse;)V
.end method

.method public abstract onStorePageContentChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;)V"
        }
    .end annotation
.end method
