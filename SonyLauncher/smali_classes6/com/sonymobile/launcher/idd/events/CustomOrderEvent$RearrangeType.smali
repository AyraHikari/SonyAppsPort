.class public interface abstract annotation Lcom/sonymobile/launcher/idd/events/CustomOrderEvent$RearrangeType;
.super Ljava/lang/Object;
.source "CustomOrderEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/events/CustomOrderEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RearrangeType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final MAKE_FOLDER:Ljava/lang/String; = "MAKE_FOLDER"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final REARRANGE:Ljava/lang/String; = "REARRANGE"

.field public static final REARRANGE_MAKE_FOLDER:Ljava/lang/String; = "REARRANGE_MAKE_FOLDER"
