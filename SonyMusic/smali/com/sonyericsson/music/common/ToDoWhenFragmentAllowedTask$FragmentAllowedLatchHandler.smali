.class public interface abstract Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;
.super Ljava/lang/Object;
.source "ToDoWhenFragmentAllowedTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentAllowedLatchHandler"
.end annotation


# virtual methods
.method public abstract addFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
.end method

.method public abstract removeFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V
.end method
