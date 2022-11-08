.class public interface abstract Lcom/android/launcher3/AutoInstallsLayout$TagParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TagParser"
.end annotation


# virtual methods
.method public abstract parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
