.class public interface abstract Lcom/android/launcher3/tracing/LauncherTraceFileProtoOrBuilder;
.super Ljava/lang/Object;
.source "LauncherTraceFileProtoOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getEntry(I)Lcom/android/launcher3/tracing/LauncherTraceEntryProto;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/tracing/LauncherTraceEntryProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMagicNumber()J
.end method

.method public abstract hasMagicNumber()Z
.end method
