.class public interface abstract Lcom/squareup/picasso/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Downloader$Response;,
        Lcom/squareup/picasso/Downloader$ResponseException;
    }
.end annotation


# virtual methods
.method public abstract load(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
